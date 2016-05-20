.class final Lcom/ushaqi/zhuishushenqi/util/ab;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/Z;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/util/Z;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/ab;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/util/Z;B)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/ab;-><init>(Lcom/ushaqi/zhuishushenqi/util/Z;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/String;

    .line 2298
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Z)Z

    .line 2299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ab;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Lcom/ushaqi/zhuishushenqi/util/Z;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 294
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    .line 1304
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1305
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/Z;->b(Z)Z

    .line 1307
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->isNeedSync()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ab;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Lcom/ushaqi/zhuishushenqi/util/Z;Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;)V

    .line 1309
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->getTotalBookCounts()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 294
    :cond_0
    return-void
.end method
