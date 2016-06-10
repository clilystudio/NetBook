.class final Lcom/ushaqi/zhuishushenqi/ui/user/J;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    .locals 2

    .prologue
    .line 204
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->O(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 199
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;

    .line 1213
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1214
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->getDueInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1217
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1218
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u622a\u6b62\u81f3"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->getVipExpire()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    const-string v1, "remove_ad_duration"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->getDueInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1225
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/s;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 199
    :cond_1
    return-void

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/J;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
