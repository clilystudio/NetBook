.class final Lcom/ushaqi/zhuishushenqi/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/y;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/y;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/y;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)V

    .line 163
    return-void
.end method
