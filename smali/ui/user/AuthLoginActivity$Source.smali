.class public final enum Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

.field public static final enum OTHER:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

.field private static final synthetic a:[Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->OTHER:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->OTHER:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->a:[Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->a:[Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    return-object v0
.end method
