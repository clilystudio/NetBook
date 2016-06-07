.class final Lcom/ushaqi/zhuishushenqi/ui/game/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/D;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/D;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/F;->b:Lcom/ushaqi/zhuishushenqi/ui/game/D;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/F;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/F;->b:Lcom/ushaqi/zhuishushenqi/ui/game/D;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/D;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/F;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Ljava/lang/String;)V

    .line 223
    return-void
.end method
