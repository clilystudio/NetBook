.class final Lcom/ushaqi/zhuishushenqi/ui/user/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/ushaqi/zhuishushenqi/ui/user/S;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;ILcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->e:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->a:I

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->b:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->a:I

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->e:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->e:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->e:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->a:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPosition(I)V

    .line 306
    const/16 v0, 0xc8

    .line 308
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/U;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/U;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/T;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method
