.class final Lcom/ushaqi/zhuishushenqi/ui/post/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .prologue
    const v2, 0x7f0200d9

    .line 348
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aW;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    return-void
.end method
