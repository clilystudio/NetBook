.class final Lcom/ushaqi/zhuishushenqi/reader/cF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cF;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cF;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cF;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 401
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cF;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    .line 402
    return-void
.end method
