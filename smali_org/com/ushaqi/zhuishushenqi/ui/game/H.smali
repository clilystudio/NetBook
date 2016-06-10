.class final Lcom/ushaqi/zhuishushenqi/ui/game/H;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;B)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    .locals 1

    .prologue
    .line 285
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->q()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 280
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;

    .line 1294
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1298
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->getLayout()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c()V

    .line 1300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->getLayout()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;Ljava/util/List;)Ljava/util/List;

    .line 1301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "switch_aoyou_game"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->g()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->getPromotion()Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;Lcom/ushaqi/zhuishushenqi/model/Game;)Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1305
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V

    :cond_1
    :goto_0
    return-void

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/H;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->e()V

    goto :goto_0
.end method
