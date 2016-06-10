.class final Lcom/ushaqi/zhuishushenqi/ui/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/at;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/at;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/at;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/at;->a:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;Ljava/lang/String;)V

    .line 237
    return-void
.end method
