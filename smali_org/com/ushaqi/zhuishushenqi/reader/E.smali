.class final Lcom/ushaqi/zhuishushenqi/reader/E;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;IZ)V
    .locals 1

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 1133
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0, p4}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;IZ)V

    .line 1134
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
    .locals 3

    .prologue
    .line 1139
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1141
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1129
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/E;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1129
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;

    .line 2148
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setKey(Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->g()V

    .line 2153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(I)V

    .line 2154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v0, :cond_1

    .line 2156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    .line 2158
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e()V

    goto :goto_0

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/E;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u51fa\u73b0\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u9605\u8bfb\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
