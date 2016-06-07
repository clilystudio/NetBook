.class final Lcom/ushaqi/zhuishushenqi/ui/post/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .prologue
    const v2, 0x7f0200d9

    .line 344
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method
