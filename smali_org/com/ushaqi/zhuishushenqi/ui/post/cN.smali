.class final Lcom/ushaqi/zhuishushenqi/ui/post/cN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cN;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cN;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cN;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cN;->a:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;I)V

    .line 368
    return-void
.end method
