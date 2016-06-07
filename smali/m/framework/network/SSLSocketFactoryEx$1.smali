.class Lm/framework/network/SSLSocketFactoryEx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$0:Lm/framework/network/SSLSocketFactoryEx;


# direct methods
.method constructor <init>(Lm/framework/network/SSLSocketFactoryEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/network/SSLSocketFactoryEx$1;->this$0:Lm/framework/network/SSLSocketFactoryEx;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
