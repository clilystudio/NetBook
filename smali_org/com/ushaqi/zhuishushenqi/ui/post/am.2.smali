.class final Lcom/ushaqi/zhuishushenqi/ui/post/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/am;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/am;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Z)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/am;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/am;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    return-void
.end method
