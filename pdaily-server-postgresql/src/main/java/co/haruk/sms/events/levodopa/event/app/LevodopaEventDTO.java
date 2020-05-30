package co.haruk.sms.events.levodopa.event.app;

import co.haruk.sms.business.structure.patient.domain.model.PatientId;
import co.haruk.sms.clinical.base.levodopa.domain.model.LevodopaMedicineId;
import co.haruk.sms.common.model.UTCDateTime;
import co.haruk.sms.events.levodopa.event.domain.model.LevodopaEvent;
import co.haruk.sms.events.levodopa.event.domain.model.LevodopaEventId;

public final class LevodopaEventDTO {
	public String id;
	public String patientId;
	public String levodopaId;
	public Long date;

	protected LevodopaEventDTO() {
	}

	private LevodopaEventDTO(String id, String patientId, String levodopaId, Long date) {
		this.id = id;
		this.patientId = patientId;
		this.levodopaId = levodopaId;
		this.date = date;
	}

	public static LevodopaEventDTO of(String id, String patientId, String levodopaId, Long date) {
		return new LevodopaEventDTO( id, patientId, levodopaId, date );
	}

	public static LevodopaEventDTO of(LevodopaEvent event) {
		return new LevodopaEventDTO(
				event.id().toString(),
				event.patientId().toString(),
				event.levodopaId().toString(),
				event.date().dateAsLong()
		);
	}

	public LevodopaEvent toLevodopaEvent() {
		return LevodopaEvent.of(
				LevodopaEventId.of( id ),
				PatientId.ofNotNull( patientId ),
				LevodopaMedicineId.ofNotNull( levodopaId ),
				UTCDateTime.of( date )
		);
	}
}
