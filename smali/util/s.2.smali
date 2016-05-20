.class public final Lcom/ushaqi/zhuishushenqi/util/s;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/s;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
    .locals 1

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/s;->c()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->u()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/s;->a()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 13
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;

    .line 1033
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1034
    if-eqz p1, :cond_0

    .line 1035
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;->getFavorite()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->getBookID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->getTocID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot$Favorite;->getChecksum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method
