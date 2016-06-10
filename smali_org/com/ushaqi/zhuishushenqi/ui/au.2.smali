.class final Lcom/ushaqi/zhuishushenqi/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/au;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/au;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e(Ljava/lang/String;)V

    .line 250
    return-void
.end method
