package co.haruk.sms.business.structure.contact;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalToIgnoringCase;
import static org.hamcrest.Matchers.greaterThan;
import static org.hamcrest.Matchers.notNullValue;

import java.util.List;

import javax.ws.rs.core.MediaType;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import co.haruk.core.testing.TestNamesGenerator;
import co.haruk.core.testing.data.IDataSet;
import co.haruk.core.testing.data.IDataSetDependent;
import co.haruk.sms.business.structure.address.AddressTesting;
import co.haruk.sms.business.structure.contact.role.ContactRoleTesting;
import co.haruk.sms.business.structure.customer.CustomerTesting;
import co.haruk.sms.business.structure.customer.contact.app.ContactRequestDTO;
import co.haruk.testing.DataSets;
import co.haruk.testing.SMSTest;

@SMSTest
@DisplayName("Contact tests")
public class ContactResourceIT implements IDataSetDependent {

	@Override
	public List<IDataSet> dataSets() {
		return List.of( DataSets.CONTACT );
	}

	@Test
	@DisplayName("Finds all contacts for customers")
	void findAll() {
		given().contentType( MediaType.APPLICATION_JSON )
				.get( "/business/customer/contact/for-customer/{0}", CustomerTesting.CUSTOMER_ID )
				.then()
				.statusCode( 200 )
				.body(
						"$.size", greaterThan( 0 )
				);
	}

	@Test
	@DisplayName("Finds all sales contacts for customer")
	void findForSalesContact() {
		given().contentType( MediaType.APPLICATION_JSON )
				.get( "/business/customer/contact/sales-contacts-for/{0}", CustomerTesting.CUSTOMER_ID )
				.then()
				.statusCode( 200 )
				.body(
						"$.size", greaterThan( 0 )
				);
	}

	@Test
	@DisplayName("Creates a minimal contact")
	void saveContact() {
		final var dto = ContactRequestDTO.of(
				null,
				TestNamesGenerator.generateName(),
				TestNamesGenerator.generateEmail(),
				null,
				null,
				null,
				CustomerTesting.CUSTOMER_ID,
				false
		);
		given().contentType( MediaType.APPLICATION_JSON )
				.body( dto )
				.post( "/business/customer/contact" )
				.then()
				.statusCode( 200 )
				.body( ContactReadViewMatcher.of( dto ) );
	}

	@Test
	@DisplayName("Updates a contact")
	void updateContact() {
		final var dto = ContactRequestDTO.of(
				ContactTesting.CONTACT_TO_UPDATE,
				TestNamesGenerator.generateName(),
				TestNamesGenerator.generateEmail(),
				TestNamesGenerator.generateNumericString( 7 ),
				TestNamesGenerator.generateNumericString( 10 ),
				ContactRoleTesting.ROLE_TO_UPDATE,
				CustomerTesting.CUSTOMER_ID,
				true
		);
		given().contentType( MediaType.APPLICATION_JSON )
				.body( dto )
				.post( "/business/customer/contact" )
				.then()
				.statusCode( 200 )
				.body( ContactReadViewMatcher.of( dto ) );
	}

	@Test
	@DisplayName("Updates a complete contact to minimal contact")
	void updateCompleteToMinimalContact() {
		final var dto = ContactRequestDTO.of(
				ContactTesting.CONTACT_TO_UPDATE,
				TestNamesGenerator.generateName(),
				TestNamesGenerator.generateEmail(),
				null,
				null,
				null,
				CustomerTesting.CUSTOMER_ID,
				false
		);
		given().contentType( MediaType.APPLICATION_JSON )
				.body( dto )
				.post( "/business/customer/contact" )
				.then()
				.statusCode( 200 )
				.body( ContactReadViewMatcher.of( dto ) );
	}

	@Test
	@DisplayName("Creates a full contact")
	void saveFullContact() {
		final var dto = ContactRequestDTO.of(
				null,
				TestNamesGenerator.generateName(),
				TestNamesGenerator.generateEmail(),
				TestNamesGenerator.generateNumericString( 7 ),
				TestNamesGenerator.generateNumericString( 10 ),
				ContactRoleTesting.ROLE_ID,
				CustomerTesting.CUSTOMER_ID,
				false
		);
		dto.mainAddress = AddressTesting.generateRandom( null );
		given().contentType( MediaType.APPLICATION_JSON )
				.body( dto )
				.post( "/business/customer/contact" )
				.then()
				.statusCode( 200 )
				.body( ContactReadViewMatcher.of( dto ) )
				.body(
						"id", notNullValue()
				);
	}

	@Test
	@DisplayName("Creates a full contact as sales contact")
	void saveFullContactAsSalesContact() {
		final var dto = ContactRequestDTO.of(
				null,
				TestNamesGenerator.generateName(),
				TestNamesGenerator.generateEmail(),
				TestNamesGenerator.generateNumericString( 7 ),
				TestNamesGenerator.generateNumericString( 10 ),
				ContactRoleTesting.ROLE_ID,
				CustomerTesting.CUSTOMER_ID,
				true
		);
		dto.mainAddress = AddressTesting.generateRandom( null );
		given().contentType( MediaType.APPLICATION_JSON )
				.body( dto )
				.post( "/business/customer/contact" )
				.then()
				.statusCode( 200 )
				.body( ContactReadViewMatcher.of( dto ) )
				.body(
						"id", notNullValue()
				);
	}

	@Test
	@DisplayName("Finds by id")
	void findsById() {
		given().contentType( MediaType.APPLICATION_JSON )
				.get( "/business/customer/contact/{0}", ContactTesting.CONTACT_ID )
				.then()
				.statusCode( 200 )
				.body(
						"id", equalToIgnoringCase( ContactTesting.CONTACT_ID ),
						"name", notNullValue(),
						"email", notNullValue(),
						"landlinePhone", notNullValue(),
						"mobilePhone", notNullValue(),
						"roleName", equalToIgnoringCase( "EXISTENT" ),
						"roleId", equalToIgnoringCase( ContactRoleTesting.ROLE_ID ),
						"customerName", equalToIgnoringCase( "EXISTENT" ),
						"customerId", equalToIgnoringCase( CustomerTesting.CUSTOMER_ID )
				);
	}

	@Test
	@DisplayName("Deletes by id")
	void deletesById() {
		given().contentType( MediaType.APPLICATION_JSON )
				.delete( "/business/customer/contact/{0}", ContactTesting.CONTACT_TO_DELETE )
				.then()
				.statusCode( 204 );
		given().contentType( MediaType.APPLICATION_JSON )
				.get( "/business/customer/contact/{0}", ContactTesting.CONTACT_TO_DELETE )
				.then()
				.statusCode( 404 );
	}
}
