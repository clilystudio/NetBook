.class final Lcom/ushaqi/zhuishushenqi/reader/dl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/dl/d;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/a;Lcom/ushaqi/zhuishushenqi/reader/dl/d;)V
    .locals 0

    .prologue
    .line 122
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/c;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/c;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/d;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/d;->a()V

    .line 127
    return-void
.end method
