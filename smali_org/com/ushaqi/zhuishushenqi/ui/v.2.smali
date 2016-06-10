.class final Lcom/ushaqi/zhuishushenqi/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/v;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/v;->a:Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/v;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/v;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/v;->a:Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/tag/Tag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method
