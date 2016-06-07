.class final Lcom/alipay/android/phone/mrpc/core/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/l;


# instance fields
.field private synthetic a:Lcom/alipay/android/phone/mrpc/core/b;

.field private synthetic b:Lcom/alipay/android/phone/mrpc/core/m;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/m;Lcom/alipay/android/phone/mrpc/core/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/n;->b:Lcom/alipay/android/phone/mrpc/core/m;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/n;->a:Lcom/alipay/android/phone/mrpc/core/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/n;->a:Lcom/alipay/android/phone/mrpc/core/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/alipay/android/phone/mrpc/core/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/n;->b:Lcom/alipay/android/phone/mrpc/core/m;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/m;->a(Lcom/alipay/android/phone/mrpc/core/m;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/r;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/r;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/alipay/android/phone/mrpc/core/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/n;->a:Lcom/alipay/android/phone/mrpc/core/b;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/n;->a:Lcom/alipay/android/phone/mrpc/core/b;

    .line 1000
    const/4 v0, 0x0

    .line 0
    return v0
.end method
