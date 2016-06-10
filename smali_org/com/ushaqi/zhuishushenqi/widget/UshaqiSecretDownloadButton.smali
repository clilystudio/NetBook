.class public Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;
.super Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/AbsDownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->a()Lcom/ushaqi/zhuishushenqi/model/AppItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->a()Lcom/ushaqi/zhuishushenqi/model/AppItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;->save()Ljava/lang/Long;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->e()V

    .line 52
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/y;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->a()Lcom/ushaqi/zhuishushenqi/model/AppItem;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/util/y;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/AppItem;)V

    .line 53
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/y;->a()V

    .line 54
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final d()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->e()V

    .line 40
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/UshaqiSecretDownloadButton;->a()Lcom/ushaqi/zhuishushenqi/model/AppItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getLocalFileUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    .line 41
    return-void
.end method
