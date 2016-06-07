.class final Lcom/ushaqi/zhuishushenqi/util/adutil/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 41
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 42
    return-void
.end method
