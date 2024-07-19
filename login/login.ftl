<!-- ~/keycloak-themes/my-custom-theme/login/login.ftl -->
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Login</title>
    <#--  Import stylesheets and Google fonts  -->
    <link rel="stylesheet" href="${url.resourcesPath}/styles/main.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700&display=swap" rel="stylesheet">
    <style>
        body {
            background: url('${url.resourcesPath}/img/hippocampus.png') no-repeat center right fixed #002766; 
            background-size: contain;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <div class="login-header">
            <img class="icon" src="${url.resourcesPath}/img/logo.png" alt="BBOP logo">
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
        </div>
    </div>
</body>
</html>
