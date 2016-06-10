.class final Lcom/alipay/android/phone/mrpc/core/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lcom/alipay/android/phone/mrpc/core/g;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/g;->b:I

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/g;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mrpc/core/g;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/g;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/android/phone/mrpc/core/g;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
