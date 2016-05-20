.class final Lcom/ushaqi/zhuishushenqi/ui/aK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/BookListActivity;->a(I)V

    .line 62
    return-void
.end method
