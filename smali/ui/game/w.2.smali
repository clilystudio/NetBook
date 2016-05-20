.class final Lcom/ushaqi/zhuishushenqi/ui/game/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/view/a;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Lcom/ushaqi/zhuishushenqi/view/a;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/w;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/w;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/w;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V

    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/w;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)V

    .line 150
    return-void
.end method
