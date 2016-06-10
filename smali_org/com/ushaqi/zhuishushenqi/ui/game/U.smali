.class final Lcom/ushaqi/zhuishushenqi/ui/game/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/T;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/T;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/U;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/U;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/U;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/U;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 79
    return-void
.end method
