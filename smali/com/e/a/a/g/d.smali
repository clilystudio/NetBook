.class final Lcom/e/a/a/g/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/e/a/a/g/a;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/e/a/a/g/d;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/e/a/a/g/d;->c:Z

    iput-boolean v0, p0, Lcom/e/a/a/g/d;->d:Z

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checkSignature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/e/a/a/g/d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/e/a/a/g/d;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v2, p0, Lcom/e/a/a/g/d;->c:Z

    invoke-static {v1, v2}, Lcom/e/a/a/g/c;->a([Landroid/content/pm/Signature;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;Lcom/e/a/a/g/b;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    const-string v0, "com.tencent.mm.openapi.token"

    .line 1000
    if-nez p1, :cond_0

    move v0, v1

    .line 0
    :goto_0
    if-nez v0, :cond_3

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "handleIntent fail, intent not from weixin msg"

    invoke-static {v0, v2}, Lcom/e/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    .line 1000
    :cond_0
    const-string v3, "wx_token_key"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 0
    :cond_3
    const-string v0, "_mmessage_content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_mmessage_sdkVersion"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "_mmessage_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "invalid argument"

    invoke-static {v0, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "_mmessage_checksum"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v3

    .line 2000
    if-eqz v5, :cond_6

    array-length v0, v5

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    array-length v0, v3

    if-nez v0, :cond_7

    :cond_6
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v3, "checkSumConsistent fail, invalid arguments"

    invoke-static {v0, v3}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 0
    :goto_2
    if-nez v0, :cond_b

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "checksum fail"

    invoke-static {v0, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2000
    :cond_7
    array-length v0, v5

    array-length v4, v3

    if-eq v0, v4, :cond_8

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v3, "checkSumConsistent fail, length is different"

    invoke-static {v0, v3}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_3
    array-length v4, v5

    if-ge v0, v4, :cond_a

    aget-byte v4, v5, v0

    aget-byte v6, v3, v0

    if-eq v4, v6, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_2

    .line 0
    :cond_b
    const-string v0, "_wxapi_command_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown cmd = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/e/a/a/e/d;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/a/e/d;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Lcom/e/a/a/g/b;->a(Lcom/e/a/a/d/b;)V

    move v1, v2

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Lcom/e/a/a/e/e;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/a/e/e;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Lcom/e/a/a/g/b;->a(Lcom/e/a/a/d/b;)V

    move v1, v2

    goto/16 :goto_1

    :pswitch_2
    new-instance v0, Lcom/e/a/a/e/a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/a/e/a;-><init>(Landroid/os/Bundle;)V

    move v1, v2

    goto/16 :goto_1

    :pswitch_3
    new-instance v0, Lcom/e/a/a/e/f;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/a/e/f;-><init>(Landroid/os/Bundle;)V

    move v1, v2

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Lcom/e/a/a/f/c;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/a/f/c;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Lcom/e/a/a/g/b;->a(Lcom/e/a/a/d/b;)V

    move v1, v2

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Lcom/e/a/a/e/b;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/a/e/b;-><init>(Landroid/os/Bundle;)V

    move v1, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/e/a/a/d/a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    const-string v2, "com.tencent.mm"

    iget-boolean v3, p0, Lcom/e/a/a/g/d;->c:Z

    invoke-static {v1, v2, v3}, Lcom/e/a/a/g/c;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendReq failed for wechat app signature check failed"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    :goto_0
    return v0

    .line 0
    :cond_0
    invoke-virtual {p1}, Lcom/e/a/a/d/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "sendReq checkArgs fail"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendReq, req type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/e/a/a/d/a;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/e/a/a/d/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/e/a/a/d/a;->a()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    .line 4000
    sget-object v3, Lcom/e/a/a/g/d;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v3, Lcom/e/a/a/a;

    invoke-direct {v3, v2}, Lcom/e/a/a/a;-><init>(Landroid/content/Context;)V

    const-string v4, "_wxapp_pay_entry_classname_"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/e/a/a/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/e/a/a/g/d;->e:Ljava/lang/String;

    const-string v3, "MicroMsg.SDK.WXApiImplV10"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pay, set wxappPayEntryClassname = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/e/a/a/g/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/e/a/a/g/d;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "pay fail, wxappPayEntryClassname is null"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/e/a/a/a/a;

    invoke-direct {v0}, Lcom/e/a/a/a/a;-><init>()V

    iput-object v1, v0, Lcom/e/a/a/a/a;->e:Landroid/os/Bundle;

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/e/a/a/g/d;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/e/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/e/a/a/a/a;)Z

    move-result v0

    goto :goto_0

    .line 0
    :cond_3
    new-instance v0, Lcom/e/a/a/a/a;

    invoke-direct {v0}, Lcom/e/a/a/a/a;-><init>()V

    iput-object v1, v0, Lcom/e/a/a/a/a;->e:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://sendreq?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/e/a/a/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/e/a/a/a/a;->c:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v1, v0, Lcom/e/a/a/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/e/a/a/a/a;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    const-string v1, "com.tencent.mm"

    iget-boolean v2, p0, Lcom/e/a/a/g/d;->c:Z

    invoke-static {v0, v1, v2}, Lcom/e/a/a/g/c;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    const-string v1, "register app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerApp, appId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/e/a/a/g/d;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "MicroMsg.SDK.WXApiImplV10"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register app "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/e/a/a/a/a/a;

    invoke-direct {v0}, Lcom/e/a/a/a/a/a;-><init>()V

    const-string v1, "com.tencent.mm"

    iput-object v1, v0, Lcom/e/a/a/a/a/a;->a:Ljava/lang/String;

    const-string v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    iput-object v1, v0, Lcom/e/a/a/a/a/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin://registerapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/e/a/a/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/e/a/a/a/a/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/e/a/a/a/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 3000
    invoke-virtual {p0}, Lcom/e/a/a/g/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.SDK.WXApiImplV10"

    const-string v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 0
    :goto_0
    const v2, 0x22000001

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 3000
    :cond_1
    new-instance v1, Lcom/e/a/a/a;

    iget-object v2, p0, Lcom/e/a/a/g/d;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/e/a/a/a;-><init>(Landroid/content/Context;)V

    const-string v2, "_build_info_sdk_int_"

    invoke-virtual {v1, v2, v0}, Lcom/e/a/a/a;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method
