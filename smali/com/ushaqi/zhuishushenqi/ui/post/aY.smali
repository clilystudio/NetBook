.class final Lcom/ushaqi/zhuishushenqi/ui/post/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aY;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;I)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aY;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method
