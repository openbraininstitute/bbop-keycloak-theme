<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
  <title>Login</title>
  <#-- Import stylesheets and Google fonts -->
    <link rel="stylesheet" href="${url.resourcesPath}/styles/main.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700&display=swap" rel="stylesheet">
</head>

<body>
  <div class="page-container">
    <div class="login-header">
      <a href="/"><img class="icon" src="${url.resourcesPath}/img/obi_logo.svg" alt="OBI logo"></a>
    </div>
    <div class="login-wrapper">
      <div class="login-container">
        <div class="login-title">
          <p>Sign in to your account</p>
        </div>
        <#if social.providers??>
          <#list social.providers as idp>
            <a href=${idp.loginUrl} class="social-link">
              <img class="icon" src="${url.resourcesPath}/icons/${idp.alias}.svg" alt="${idp.displayName} Icon">
              ${idp.displayName}
            </a>
          </#list>
        </#if>
      </div>
      <div class="divider-text display-none">or</div>
      <div class="form-container display-none">
        <form
          action="${url.loginAction}"
          class="login-form"
          id="kc-form-login"
          method="post"
          onsubmit="login.disabled = true; return true;">
          <fieldset class="login-form-group">
            <label class="login-form-label" for="username">Username</label>
            <input
              aria-invalid=""
              autocomplete="off"
              class="login-form-input"
              id="username"
              name="username"
              placeholder="Enter your username"
              required
              type="text"
              value="">
          </fieldset>
          <fieldset class="login-form-group">
            <label class="login-form-label" for="password">Password</label>
            <input
              aria-invalid=""
              autocomplete="off"
              class="login-form-input"
              id="password"
              name="password"
              placeholder="⁎⁎⁎⁎"
              required
              type="password"
              value="">
          </fieldset>
          <input type="hidden" id="id-hidden-input" name="credentialId" />
          <input
            class="login-form-submit"
            name="login"
            type="submit"
            value="Sign In" />
        </form>
        <#if message?has_content>
          <div class="login-validation-container validation-${message.type}"><span>
              ${message.summary}
            </span></div>
        </#if>
      </div>
    </div>
  </div>
</body>

</html>
