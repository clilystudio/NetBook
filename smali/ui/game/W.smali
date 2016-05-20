.class final Lcom/ushaqi/zhuishushenqi/ui/game/W;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;B)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/W;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    .locals 1

    .prologue
    .line 545
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->s()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 549
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 540
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;

    .line 1554
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1555
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1558
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->isOk()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->getLayout()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1559
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->c()V

    .line 1560
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->getLayout()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;Ljava/util/List;)Ljava/util/List;

    .line 1562
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1563
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g()V

    .line 1564
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;Ljava/util/List;)Ljava/util/List;

    .line 1568
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    .line 1569
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getActivity()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getType()Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    move-result-object v2

    sget-object v3, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->ACTIVITY:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v2, v3, :cond_1

    .line 1570
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getActivity()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getBannerImage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1564
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1573
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->getPromotions()[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;[Lcom/ushaqi/zhuishushenqi/model/Game;)[Lcom/ushaqi/zhuishushenqi/model/Game;

    :cond_4
    :goto_2
    return-void

    .line 1575
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/W;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e()V

    goto :goto_2
.end method
