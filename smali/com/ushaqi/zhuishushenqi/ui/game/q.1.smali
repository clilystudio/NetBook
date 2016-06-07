.class final Lcom/ushaqi/zhuishushenqi/ui/game/q;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/GameDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;B)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameDetail;
    .locals 2

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->Y(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameDetail;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameDetail;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 212
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameDetail;

    .line 1226
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1228
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->getGame()Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f()V

    .line 1230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->getGame()Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Game;)Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    .line 1232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    .line 1235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1516
    const-string v2, "game_detail_opened"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "micro_game_continue_detail"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "micro_game_play_detail"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h()V

    .line 1245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
