.class final Lcom/alipay/android/phone/mrpc/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private synthetic a:Lcom/alipay/android/phone/mrpc/core/e;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mrpc/core/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/f;->a:Lcom/alipay/android/phone/mrpc/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mrpc/core/e;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/f;-><init>(Lcom/alipay/android/phone/mrpc/core/e;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/f;->a:Lcom/alipay/android/phone/mrpc/core/e;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/e;->a(Lcom/alipay/android/phone/mrpc/core/e;)Lcom/alipay/android/phone/mrpc/core/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/g;->a(Lcom/alipay/android/phone/mrpc/core/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/e;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mrpc/core/g;->a(Lcom/alipay/android/phone/mrpc/core/g;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
