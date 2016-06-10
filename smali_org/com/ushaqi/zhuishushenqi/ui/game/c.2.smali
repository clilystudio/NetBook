.class final Lcom/ushaqi/zhuishushenqi/ui/game/c;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GameCat;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;B)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)V

    return-void
.end method

.method private static varargs a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameCat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->r()Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;->getGames()[Lcom/ushaqi/zhuishushenqi/model/GameCat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;->getGames()[Lcom/ushaqi/zhuishushenqi/model/GameCat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    check-cast p1, Ljava/util/List;

    .line 1112
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1116
    if-eqz p1, :cond_2

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->c()V

    .line 1119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/b;->a(Ljava/util/Collection;)V

    .line 1121
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->d()V

    goto :goto_0

    .line 1124
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/c;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->e()V

    goto :goto_0
.end method
