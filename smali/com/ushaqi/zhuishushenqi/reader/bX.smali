.class final Lcom/ushaqi/zhuishushenqi/reader/bX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bX;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/bX;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bX;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bX;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;Ljava/lang/String;)V

    .line 179
    return-void
.end method
