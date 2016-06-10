.class final Lcom/ushaqi/zhuishushenqi/ui/game/am;
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
        "Lcom/ushaqi/zhuishushenqi/model/Game;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;B)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V

    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(II)Lcom/ushaqi/zhuishushenqi/model/GameRoot;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameRoot;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameRoot;->getGames()[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameRoot;->getGames()[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 122
    check-cast p1, Ljava/util/List;

    .line 1139
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1145
    if-eqz p1, :cond_3

    .line 1146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1147
    if-lez v1, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c()V

    .line 1149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/al;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->a(Ljava/util/Collection;)V

    .line 1151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V

    .line 1152
    const/16 v0, 0x14

    if-lt v1, v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d()V

    goto :goto_0

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    goto :goto_0

    .line 1165
    :cond_3
    if-eqz v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->e()V

    goto :goto_0

    .line 1168
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/am;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
