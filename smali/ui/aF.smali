.class final Lcom/ushaqi/zhuishushenqi/ui/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aF;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/aF;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aF;->b:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aF;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Ljava/lang/String;)V

    .line 462
    return-void
.end method
