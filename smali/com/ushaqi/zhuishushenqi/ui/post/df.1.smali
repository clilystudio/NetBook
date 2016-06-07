.class final Lcom/ushaqi/zhuishushenqi/ui/post/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/df;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/df;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;I)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/df;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/df;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method
