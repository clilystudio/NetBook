.class public final enum Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

.field public static final enum UNIMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

.field private static final synthetic a:[Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    const-string v1, "IMPORTANT"

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->IMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    const-string v1, "UNIMPORTANT"

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->UNIMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->IMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->UNIMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->a:[Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    return-object v0
.end method

.method public static values()[Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->a:[Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    invoke-virtual {v0}, [Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    return-object v0
.end method
