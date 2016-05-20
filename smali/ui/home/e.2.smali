.class final Lcom/ushaqi/zhuishushenqi/ui/home/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/e;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/e;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->finish()V

    .line 986
    return-void
.end method
