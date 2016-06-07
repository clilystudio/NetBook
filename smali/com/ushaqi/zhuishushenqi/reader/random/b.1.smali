.class public final Lcom/ushaqi/zhuishushenqi/reader/random/b;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;IZ)V
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f05006a

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/b;->a:Z

    .line 32
    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
    .locals 1

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h()Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->a()Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 25
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;

    .line 1046
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1049
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_5

    .line 1050
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

    move-result-object v0

    .line 1051
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1056
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "randomBooks"

    invoke-static {v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1057
    if-ne v0, v3, :cond_0

    .line 1058
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 1060
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1061
    if-ltz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1062
    :cond_1
    const/4 v0, 0x0

    .line 1064
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "randomBooks"

    invoke-static {v2, v3, v0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1066
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;

    .line 1067
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->getBook()Lcom/ushaqi/zhuishushenqi/model/MysteryBook;

    move-result-object v1

    .line 1069
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->get_id()Ljava/lang/String;

    move-result-object v2

    .line 1070
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList$MysteryBookRoot;->getToc()Lcom/ushaqi/zhuishushenqi/model/MysteryToc;

    move-result-object v0

    .line 1074
    if-nez v0, :cond_4

    .line 1075
    const-string v0, ""

    .line 1080
    :goto_0
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;-><init>()V

    .line 1081
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setId(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setTitle(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->getLastChapter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setLastChapter(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->getUpdated()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setUpdated(Ljava/util/Date;)V

    .line 1085
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->setCover(Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V

    .line 1089
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1090
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1092
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/b;->a:Z

    if-eqz v0, :cond_3

    .line 1093
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1095
    :cond_3
    :goto_1
    return-void

    .line 1077
    :cond_4
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/MysteryToc;->get_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1096
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/b;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
