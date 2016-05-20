.class final Lcom/ushaqi/zhuishushenqi/ui/home/g;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/g;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;B)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
    .locals 1

    .prologue
    .line 532
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->t()Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 536
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/g;->a()Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 527
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;

    .line 1541
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1542
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/g;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;->getLinks()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/g;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    if-eqz v0, :cond_0

    .line 1546
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/g;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;Ljava/lang/String;)V

    .line 527
    :cond_0
    return-void
.end method
