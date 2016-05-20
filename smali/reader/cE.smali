.class final Lcom/ushaqi/zhuishushenqi/reader/cE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 391
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cE;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cE;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 395
    return-void
.end method
