package co.haruk.sms.security.authorization.domain.model;

import javax.persistence.Embeddable;

import co.haruk.sms.common.model.SimpleStringId;

/**
 * @author cristhiank on 1/5/20
 **/
@Embeddable
public class ProtectedActivityId extends SimpleStringId {

	protected ProtectedActivityId() {
	}

	protected ProtectedActivityId(String text) {
		super( text );
	}

	public static ProtectedActivityId of(String text) {
		return new ProtectedActivityId( text );
	}
}