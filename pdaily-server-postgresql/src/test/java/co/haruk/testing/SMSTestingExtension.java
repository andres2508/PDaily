package co.haruk.testing;

import javax.ws.rs.core.MediaType;

import org.junit.jupiter.api.extension.BeforeAllCallback;
import org.junit.jupiter.api.extension.BeforeEachCallback;
import org.junit.jupiter.api.extension.ExtensionContext;

import co.haruk.sms.subscription.account.AccountTesting;

import io.restassured.RestAssured;
import io.restassured.builder.RequestSpecBuilder;

/**
 * @author cristhiank on 14/11/19
 **/
public class SMSTestingExtension implements BeforeAllCallback, BeforeEachCallback {
	@Override
	public void beforeAll(ExtensionContext extensionContext) {
		initRestAssured();
	}

	@Override
	public void beforeEach(ExtensionContext context) throws Exception {
		SMSTesting.authWithAdmin( RestAssured.requestSpecification );
	}

	private void initRestAssured() {
		RestAssured.requestSpecification = new RequestSpecBuilder()
				.setContentType( MediaType.APPLICATION_JSON )
				.setAccept( MediaType.APPLICATION_JSON )
				.addHeader( "haruk-tenant", AccountTesting.ACCOUNT_ID )
				.build();
	}
}
