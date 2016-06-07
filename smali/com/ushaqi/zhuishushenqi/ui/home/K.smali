.class final Lcom/ushaqi/zhuishushenqi/ui/home/K;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;B)V
    .locals 0

    .prologue
    .line 1205
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1211
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->a:Ljava/util/List;

    .line 1213
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1214
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 1215
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1221
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1217
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1205
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/K;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1205
    check-cast p1, Ljava/util/List;

    .line 2226
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V

    .line 2231
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->a:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 2234
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/K;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050131

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
