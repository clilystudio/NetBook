.class final Lcom/ushaqi/zhuishushenqi/ui/game/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/l;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/l;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/game/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/l;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/game/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/r;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/l;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    .line 530
    :cond_1
    return-void
.end method
