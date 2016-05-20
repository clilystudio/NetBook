.class final Lcom/ushaqi/zhuishushenqi/reader/random/C;
.super Lcom/a/a/c;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 247
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "iid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/a;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/random/a;-><init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v2, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B"

    invoke-static {v1, v0, v2}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    const-string v1, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/C;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
