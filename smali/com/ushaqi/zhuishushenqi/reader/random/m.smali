.class final Lcom/ushaqi/zhuishushenqi/reader/random/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/m;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 626
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 627
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/m;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->finish()V

    .line 628
    return-void
.end method
