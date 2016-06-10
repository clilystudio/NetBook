.class final Lcom/ushaqi/zhuishushenqi/ui/home/h;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/h;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    .locals 2

    .prologue
    .line 1048
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/h;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->O(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1052
    :goto_0
    return-object v0

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1052
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1043
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/h;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1043
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;

    .line 2057
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2058
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/h;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    const-string v1, "remove_ad_duration"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->getDueInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2060
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->getDueInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2061
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/s;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1043
    :cond_0
    return-void
.end method
