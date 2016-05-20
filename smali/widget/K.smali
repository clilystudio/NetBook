.class final Lcom/ushaqi/zhuishushenqi/widget/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/K;->b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/K;->a:Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/K;->b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 87
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/K;->a:Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/K;->b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;Z)Landroid/content/Intent;

    move-result-object v1

    .line 88
    const-string v2, "title"

    const-string v3, "\u5168\u90e8\u793c\u5305"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
