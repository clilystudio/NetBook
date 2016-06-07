.class final Lcom/ushaqi/zhuishushenqi/reader/D;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->c:Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 962
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 963
    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->b:Ljava/lang/String;

    .line 964
    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 969
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->c:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->c:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->a:Ljava/lang/String;

    .line 971
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 973
    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 979
    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/D;->a()Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 956
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;

    .line 1984
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1986
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1987
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->getKeyLength()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    div-double/2addr v4, v6

    double-to-int v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1988
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;->getKeys()[Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 1989
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->get_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot$ChapterKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1991
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1998
    :cond_1
    :goto_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Ljava/util/Map;)V

    .line 1999
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/C;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->c:Lcom/ushaqi/zhuishushenqi/reader/o;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->c:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u83b7\u53d6\u8d44\u4ea7\u4fe1\u606f..."

    invoke-direct {v0, v1, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/C;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/C;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2000
    :goto_2
    return-void

    .line 1993
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1994
    if-nez v0, :cond_1

    .line 1995
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 2001
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/D;->c:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u4e2a\u4eba\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u8def\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2
.end method
