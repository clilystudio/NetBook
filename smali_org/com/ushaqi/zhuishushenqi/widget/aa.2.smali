.class final Lcom/ushaqi/zhuishushenqi/widget/aa;
.super Lcom/a/a/c;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "iid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/a;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/random/a;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aa;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
