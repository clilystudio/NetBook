.class public final Lcom/ushaqi/zhuishushenqi/reader/random/a;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/app/Activity;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->a:Landroid/app/ProgressDialog;

    .line 30
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b:Landroid/app/Activity;

    .line 31
    iput-boolean p3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->c:Z

    .line 32
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    aget-object v0, p0, v0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->r(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    move-result-object v2

    .line 40
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;-><init>()V

    .line 43
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->set_id(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->setTitle(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->setLastChapter(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->setAuthor(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->setCover(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->setUpdated(Ljava/util/Date;)V

    .line 49
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->setDefaultTocId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 58
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/random/a;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 22
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;

    .line 1063
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1066
    if-eqz p1, :cond_2

    .line 1067
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->get_id()Ljava/lang/String;

    move-result-object v1

    .line 1068
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getDefaultTocId()Ljava/lang/String;

    move-result-object v0

    .line 1071
    if-nez v0, :cond_0

    .line 1072
    const-string v0, ""

    .line 1075
    :cond_0
    new-instance v3, Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;-><init>()V

    .line 1076
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->get_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setId(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setTitle(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setLastChapter(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getUpdated()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setUpdated(Ljava/util/Date;)V

    .line 1080
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getCover()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setCover(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryDefaultBook;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setAuthor(Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V

    .line 1086
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b:Landroid/app/Activity;

    invoke-static {v3, v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1088
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->c:Z

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1091
    :cond_1
    :goto_0
    return-void

    .line 1092
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/a;->b:Landroid/app/Activity;

    const-string v1, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
