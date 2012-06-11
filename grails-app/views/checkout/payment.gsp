<%@ page import="org.mayocat.shop.grails.Order"%>

<!doctype html>
<html>
<head>
<meta name="layout" content="checkout">
<title><g:message code="checkout.payment" default="Payment" /></title>
<r:require modules="checkout" />
</head>
<body>
	<div id="selectPaymentMethod" class="checkout-container content"
		role="main">
		<div class="page-header">
			<h2>
				<g:message code="checkout.payment" default="Payment" />
			</h2>
		</div>
		<g:if test="${flash.message}">
			<div class="alert alert-info" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:if test="${!hasExternalForm}">
		  <g:form action="doPaymentSuccess" method="post" mapping="checkoutPaymentAfter">
		  			<div>
				${beforeContent}
			</div>
			<div class="submit-step">
				<input class="btn" type="submit"
					value="<g:message code="checkout.payment.submit" default="Validate" />" />
			</div>
			</g:form>
		</g:if>
	    <g:else>
          ${beforeContent}
		</g:else>
	</div>
</body>
</html>