.class final Lcom/ushaqi/zhuishushenqi/ui/game/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/Q;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/Q;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/R;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/R;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/R;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/R;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 177
    return-void
.end method
