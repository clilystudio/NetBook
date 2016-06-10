.class final Lcom/ushaqi/zhuishushenqi/widget/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/O;->b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/O;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/O;->b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/O;->b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/O;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 80
    return-void
.end method
