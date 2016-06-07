.class public Lcn/sharesdk/framework/statistics/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/sharesdk/framework/statistics/a/c;

.field private c:Lcom/mob/tools/b/a;

.field private d:Lcom/mob/tools/a/l;

.field private e:Lcom/mob/tools/b/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/framework/statistics/a/c;->a(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a/c;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/b/a;->a(Landroid/content/Context;)Lcom/mob/tools/b/a;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    new-instance v0, Lcom/mob/tools/a/l;

    invoke-direct {v0}, Lcom/mob/tools/a/l;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    new-instance v0, Lcom/mob/tools/b/e;

    invoke-direct {v0}, Lcom/mob/tools/b/e;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->e()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->b()Z

    move-result v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1}, Lcn/sharesdk/framework/statistics/a/c;->c()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v4}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v4}, Lcom/mob/tools/b/a;->n()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0xea60

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getSDKVersionCode()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1"

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v4}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 5000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 0
    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7000
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 0
    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v3, "shorLinkMsg ===>>>>"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s:%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->i(Ljava/lang/String;)[B

    move-result-object v3

    .line 8000
    if-eqz v3, :cond_0

    if-nez v0, :cond_3

    :cond_0
    const/4 v4, 0x0

    .line 0
    :goto_2
    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "|||||"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|||||"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8000
    :cond_3
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v4, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/PKCS7Padding"

    const-string v3, "BC"

    invoke-static {v0, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    new-array v4, v3, [B

    array-length v3, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    goto :goto_2
.end method

.method private c(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "type"

    const-string v1, "DEVICE"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appkey"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apppkg"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appver"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xea60

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getSDKVersionCode()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "sdkver"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "networktype"

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v0, p2}, Lcom/mob/tools/b/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShareSDK/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getSDKVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    const-string v0, "http://api.share.mob.com:80"

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/framework/statistics/c;->h:Z

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conf4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    const-string v0, "http://up.sharesdk.cn/upload/image"

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    const-string v0, "http://l.mob.com/url/ShareSdkMapping.do"

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/snsconf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 6

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "{}"

    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mob/tools/a/l;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->o(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    const-string v3, "service_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/sharesdk/framework/statistics/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0}, Lcn/sharesdk/framework/statistics/a/c;->a()J

    move-result-wide v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x7530

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "appkey"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v6, v5, Lcom/mob/tools/a/p;->a:I

    iput v6, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, " isConnectToServer response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v7, 0x1388

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcn/sharesdk/framework/statistics/c;->h:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "key"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v6

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v4, Lcom/mob/tools/a/i;

    const-string v5, "urls"

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "deviceid"

    iget-object v4, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v4}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "snsplat"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2, p5}, Lcn/sharesdk/framework/statistics/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v4, "m"

    invoke-direct {v1, v4, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v5, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v7, v5, Lcom/mob/tools/a/p;->a:I

    iput v7, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "> SERVER_SHORT_LINK_URL  resp: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v6, p0, Lcn/sharesdk/framework/statistics/c;->h:Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    move-object v3, v1

    goto/16 :goto_0
.end method

.method public a(Lcn/sharesdk/framework/statistics/b/c;)V
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/sharesdk/framework/statistics/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p1, Lcn/sharesdk/framework/statistics/b/c;->e:J

    invoke-static {v0, v1, v2, v3}, Lcn/sharesdk/framework/statistics/a/e;->a(Landroid/content/Context;Ljava/lang/String;J)J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x2710

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "m"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v6, v5, Lcom/mob/tools/a/p;->a:I

    iput v6, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "> uploadEXTDeviceData  resp: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/16 v7, 0x7530

    const/4 v6, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plat"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "list"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mob/tools/b/e;

    invoke-direct {v1}, Lcom/mob/tools/b/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v3, "m"

    const-string v4, "sdk.sharesdk.sdk"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v7, v5, Lcom/mob/tools/a/p;->a:I

    iput v7, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "> uploadApps list resp: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v6, 0x7530

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/statistics/c;->c(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v3, "m"

    const-string v4, "sdk.sharesdk.sdk"

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v6, v5, Lcom/mob/tools/a/p;->a:I

    iput v6, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "> uploadDeviceData  resp: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7

    const/16 v6, 0x7530

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network is disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "m"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v3, "t"

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v6, v5, Lcom/mob/tools/a/p;->a:I

    iput v6, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/sharesdk/framework/statistics/a/e;->a(Landroid/content/Context;Ljava/util/ArrayList;)J

    return-void
.end method

.method public b()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mac"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "udid"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    .line 2000
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "factory"

    .line 3000
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plat"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sysver"

    .line 4000
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "breaked"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screensize"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidid"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "adsid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x2710

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "appkey"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "device"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "plat"

    const-string v3, "1"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "apppkg"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "appver"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0xea60

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getSDKVersionCode()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/mob/tools/a/i;

    const-string v3, "sdkver"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "networktype"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v6, v5, Lcom/mob/tools/a/p;->a:I

    iput v6, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, " get server config response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 0
    invoke-static {p2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->i(Ljava/lang/String;)[B

    move-result-object v0

    .line 9000
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 0
    :goto_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 9000
    :cond_1
    new-array v3, v6, [B

    array-length v4, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v4, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/NoPadding"

    const-string v3, "BC"

    invoke-static {v0, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    new-array v4, v3, [B

    array-length v3, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v0, p2}, Lcom/mob/tools/b/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v1, p1, v0}, Lcn/sharesdk/framework/statistics/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "DEVEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plat"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phonename"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signmd5"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ssid"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bssid"

    iget-object v2, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v2}, Lcom/mob/tools/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/framework/statistics/c;->g:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/framework/statistics/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/sharesdk/framework/statistics/a/e;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/a/i;

    const-string v0, "file"

    invoke-direct {v3, v0, p1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v5, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->j()Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "upload file response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x2710

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "appkey"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "device"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->c:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/sharesdk/framework/statistics/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    iput v6, v5, Lcom/mob/tools/a/p;->a:I

    iput v6, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->d:Lcom/mob/tools/a/l;

    invoke-direct {p0}, Lcn/sharesdk/framework/statistics/c;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/c;->b:Lcn/sharesdk/framework/statistics/a/c;

    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/statistics/a/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/c;->e:Lcom/mob/tools/b/e;

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
