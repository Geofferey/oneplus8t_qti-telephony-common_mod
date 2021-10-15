.class final Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;
.super Ljava/lang/Object;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "argument"    # Ljava/lang/Object;

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$MainThreadRequest;->argument:Ljava/lang/Object;

    .line 1112
    return-void
.end method
