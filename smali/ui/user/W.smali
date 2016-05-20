.class final Lcom/ushaqi/zhuishushenqi/ui/user/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

.field private synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;ILandroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->a:I

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a(Lcom/ushaqi/zhuishushenqi/ui/user/S;)[Z

    move-result-object v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->a:I

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a(Lcom/ushaqi/zhuishushenqi/ui/user/S;)[Z

    move-result-object v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->a:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, v2

    .line 359
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->notifyDataSetChanged()V

    .line 360
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->b:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a(Lcom/ushaqi/zhuishushenqi/ui/user/S;)[Z

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->a:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/X;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/X;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/W;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/W;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 370
    return-void

    .line 357
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
